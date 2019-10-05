
const core = require('@actions/core');
const exec = require('@actions/exec');

async function run() {
    try {
        const pwshScript = `${__dirname}/action.ps1`
        await exec.exec('pwsh', [ '-c', pwshScript ]);
    } catch (error) {
        core.setFailed(error.message);
    }
}
run();
