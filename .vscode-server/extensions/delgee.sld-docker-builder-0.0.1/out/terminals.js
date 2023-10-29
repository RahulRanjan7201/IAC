'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
function activate(context) {
    let NEXT_TERM_ID = 1;
    context.subscriptions.push(vscode.commands.registerCommand('terminalTest.createAndSend', () => {
        const terminal = vscode.window.createTerminal(`Ext Terminal #${NEXT_TERM_ID++}`);
        terminal.sendText("echo 'Sent text immediately after creating'");
    }));
}
exports.activate = activate;
//# sourceMappingURL=terminals.js.map