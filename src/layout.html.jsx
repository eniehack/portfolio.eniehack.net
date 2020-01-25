export const Footer = () => {
    return (
        <footer className="footer">
            <div className="column is-10 is-offset-2">
                <small>Copyright &copy; 2020 Nakaya, You may choose two license, MPL-2.0 or Apache-2.0.</small>
            </div>
        </footer>
    )
}

export default (props) => {
    return (
        <html lang="ja">
        <head>
            <meta charSet="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <meta httpEquiv="X-UA-Compatible" content="ie=edge"/>
            <link rel="stylesheet" href="./css/style.css"></link>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fork-awesome@1.1.7/css/fork-awesome.min.css" integrity="sha256-gsmEoJAws/Kd3CjuOQzLie5Q3yshhvmo7YNtBG7aaEY=" crossOrigin="anonymous"></link>
            <title>{props.title}</title>
        </head>
        <body>
            <div className="columns has-text-left is-multiline">
                <div className="column is-10 is-offset-2">
                    <div className="container">
                        {props.children}
                    </div>
                </div>
                <div className="column">
                    <Footer />
                </div>
            </div>
        </body>
        </html>
    )
}