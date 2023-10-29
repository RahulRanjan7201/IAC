"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
const path = require("path");
const fs = require("fs");
function activate(context) {
    const TERMINAL_NAME = 'Docker builder Terminal';
    const dockerBuild = vscode.commands.registerCommand('extension.dockerBuild', () => {
        let terminal = checkTerminal(TERMINAL_NAME);
        if (!terminal) {
            terminal = vscode.window.createTerminal(TERMINAL_NAME);
        }
        // path.join(this.workspaceRoot, 'package.json');
        let workspaceFolders = vscode.workspace.workspaceFolders;
        if (workspaceFolders) {
            let rootPathObj = workspaceFolders[0];
            if (rootPathObj) {
                let rootPath = rootPathObj.uri.path;
                if (fs.existsSync(path.join(rootPath, 'package.json'))) {
                    let pkgString = fs.readFileSync(path.join(rootPath, 'package.json'), 'utf8');
                    try {
                        let pkg = JSON.parse(pkgString);
                        let dockerRegistry = pkg.dockerRegistry;
                        if (dockerRegistry) {
                            terminal.show();
                            terminal.sendText(`cd ${rootPath} && docker build -t ${dockerRegistry} . && docker push ${dockerRegistry}`);
                        }
                        else {
                            vscode.window.showErrorMessage('Docker registry not found');
                        }
                    }
                    catch (e) {
                        vscode.window.showErrorMessage('Error occured', e);
                    }
                }
                else {
                    vscode.window.showErrorMessage('No package.json found');
                }
            }
            // if (vscode.workspace.fs.stat(path.join(rootPath.uri, 'package.json')))
        }
        else {
            vscode.window.showErrorMessage('No workspace selected');
        }
    });
    context.subscriptions.push(dockerBuild);
}
exports.activate = activate;
function checkTerminal(name = '') {
    const terminals = vscode.window.terminals;
    let terminal = terminals.find(entry => {
        return entry.name === name;
    });
    return terminal;
}
function selectTerminal() {
    const terminals = vscode.window.terminals;
    const items = terminals.map(t => {
        return {
            label: `name: ${t.name}`,
            terminal: t
        };
    });
    return vscode.window.showQuickPick(items).then(item => {
        return item ? item.terminal : undefined;
    });
}
function ensureTerminalExists() {
    if (vscode.window.terminals.length === 0) {
        vscode.window.showErrorMessage('No active terminals');
        return false;
    }
    return true;
}
// this method is called when your extension is deactivated
function deactivate() { }
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map