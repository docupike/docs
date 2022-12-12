const statusPageIssues = 'https://status.docupike.com/index.json';
const announcementSection = document.querySelector('[data-md-component="announce"]');

fetch(statusPageIssues)
    .then(
        function(response) {
            response.json().then(function(data) {
                let renderedAnnouncements = '';

                for (const system of data.systems) {
                    const affectedSystem = system.name;

                    for (const issue of system.unresolvedIssues) {
                        const issueText = issue.title;
                        const issueLink = issue.permalink;
                        switch(issue.severity) {
                            case 'disrupted':
                                var issueColor = 'issueDisrupted';
                                break;
                            case 'down':
                                var issueColor = 'issueDown';
                                break;
                            case 'notice':
                                var issueColor = 'issueNotice';
                                break;
                        }
                        renderedAnnouncements += `
                            <aside class="md-banner ${issueColor}">
                                <div class="md-banner__inner md-grid md-typeset">
                                    <p>
                                        <a href="${issueLink}" target="_blank">
                                            <strong>${affectedSystem}:</strong> <em>${issueText}</em>
                                        </a>
                                    </p>
                                </div>
                            </aside>
                        `;
                    }
                }

                announcementSection.innerHTML = renderedAnnouncements;
            });
        }
    );
