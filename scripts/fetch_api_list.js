async function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

async function run() {
  sections = Array.from(document.getElementsByClassName("SidebarGroup-group"))
  let text = []
  for (let section of sections) {
    section.click()
    await sleep(1000)
    const header = document.getElementsByClassName('SidebarGroup-group is-active')[0]
    const baseURL = header.href
    const title = header.innerText
    const entities = Array.from(document.querySelectorAll('div.SidebarGroup-items > div'))
      .map(x => ({title: x.getElementsByClassName('MLI-top')[0].innerText, url: `${baseURL}/${x.id}`}))
      .map(x => `- [ ] [${x.title}](${x.url})`)
    text.push(`### ${title}` + '\n' + entities.join('\n'))
  }
  text = text.join('\n\n')
  console.log(text)
}
