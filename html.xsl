<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
                xmlns:foaf="http://xmlns.com/foaf/0.1/"
                xmlns:dc="http://purl.org/dc/elements/1.1/"
                xmlns:dcterms="http://dublincore.org/specifications/dublin-core/dcmi-terms/2020-01-20/"
                exclude-result-prefixes="xsl rdf rdfs foaf dc">
    <xsl:output method="xml"
                omit-xml-declaration="yes"
                encoding="UTF-8" />

    <xsl:template name="anchor-rel-me">
        <xsl:param name="text" />
        <xsl:param name="href" />
        <a>
            <xsl:attribute name="href">
                <xsl:value-of select="$href" />
            </xsl:attribute>
            <xsl:attribute name="target">
                <xsl:text>_blank</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="rel">
                <xsl:text>noopenner noreferer me</xsl:text>
            </xsl:attribute>

            <xsl:value-of select="$text" />
        </a>
    </xsl:template>

    <xsl:template name="anchor-rel-friend-met">
        <xsl:param name="text" />
        <xsl:param name="href" />
        <a>
            <xsl:attribute name="href">
                <xsl:value-of select="$href" />
            </xsl:attribute>
            <xsl:attribute name="target">
                <xsl:text>_blank</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="rel">
                <xsl:text>noopenner noreferer friend met</xsl:text>
            </xsl:attribute>

            <xsl:value-of select="$text" />
        </a>
    </xsl:template>

    <xsl:template name="anchor">
        <xsl:param name="text" />
        <xsl:param name="href" />
        <a>
            <xsl:attribute name="href">
                <xsl:value-of select="$href" />
            </xsl:attribute>
            <xsl:attribute name="target">
                <xsl:text>_blank</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="rel">
                <xsl:text>noopenner noreferer</xsl:text>
            </xsl:attribute>

            <xsl:value-of select="$text" />
        </a>
    </xsl:template>

    <xsl:template match="/">
        <html lang="ja">
            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="x-ua-compatible" content="ie=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <title>Nakaya - eniehack.net</title>
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,300italic,700,700italic" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/milligram/1.4.1/milligram.min.css" integrity="sha512-xiunq9hpKsIcz42zt0o2vCo34xV0j6Ny8hgEylN3XBglZDtTZ2nwnqF/Z/TTCc18sGdvCjbFInNd++6q3J0N6g==" crossorigin="anonymous" />
                <style>
                    #avatar {
                        width: 200px;
                        margin-bottom: 50px;
                        margin-bottom: 25px;
                    }

                    #title {
                        margin-bottom: 0px;
                    }

                    .interest {
                          list-style: none;
                          display: flex;
                          gap: 5px;
                          flex-wrap: wrap;
                    }

                    .topic:not(:last-child)::after {
                        content: ",";
                    }

                    article {
                        margin-top: 75px;
                    }

                    footer {
                        margin-bottom: 50px;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <xsl:apply-templates />
                </div>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="/rdf:RDF">
        <main>
            <xsl:apply-templates select="/rdf:RDF/foaf:Person"/>
        </main>
        <footer>
            <xsl:apply-templates select="/rdf:RDF/dc:*"/>
        </footer>
    </xsl:template>

    <xsl:template match="/rdf:RDF/foaf:Person">
            <article>
                <div class="">
                    <span>
                        <xsl:apply-templates select="//foaf:name" />
                        <xsl:apply-templates select="//foaf:nick" />
                    </span>
                    <xsl:apply-templates select="//foaf:depiction" />
                </div>

                <section id="interest">
                    <h2>interests</h2>
                    <div>
                        <ul class="interest">
                            <xsl:apply-templates select="//foaf:interest" />
                        </ul>
                    </div>
                </section>

                <section>
                    <h2>works</h2>
                    <div>
                        <section>
                        <h3>現在のプロジェクト</h3>
                        <ul>
                            <xsl:apply-templates select="//foaf:currentProject" />
                        </ul>
                        </section>
                        <section>
                        <h3>制作物</h3>
                        <ul>
                            <xsl:apply-templates select="//foaf:made" />
                        </ul>
                        </section>
                        <section>
                        <h3>過去のプロジェクト</h3>
                        <ul>
                            <xsl:apply-templates select="//foaf:pastProject" />
                        </ul>
                        </section>
                    </div>
                </section>

                <section>
                    <h2>Links</h2>
                    <div>
                        <ul>
                            <xsl:apply-templates select="//foaf:weblog" />
                            <xsl:apply-templates select="//foaf:account" />
                        </ul>
                    </div>
                </section>

                <section>
                    <h2>相互リンク</h2>
                    <ul>
                        <xsl:apply-templates select="//foaf:knows" />
                    </ul>
                </section>
            </article>
    </xsl:template>

    <xsl:template match="//foaf:name">
        <h1 id="title">
            <xsl:value-of select="text()" />
        </h1>
    </xsl:template>

    <xsl:template match="//foaf:nick">
        <p>
            <xsl:value-of select="text()" />
        </p>
    </xsl:template>

    <xsl:template match="//foaf:depiction">
        <img>
            <xsl:attribute name="id">
                <xsl:text>avatar</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="src">
                <xsl:value-of select="@rdf:resource" />
            </xsl:attribute>
        </img>
    </xsl:template>

    <xsl:template match="//foaf:interest">
        <li class="topic">
            <span>
                <xsl:value-of select="@rdfs:label" />
            </span>
        </li>
    </xsl:template>

    <xsl:template match="//foaf:currentProject">
        <li>
            <xsl:call-template name="anchor">
                <xsl:with-param name="text">
                    <xsl:value-of select="@rdfs:label" />
                </xsl:with-param>
                <xsl:with-param name="href">
                    <xsl:value-of select="@rdf:resource" />
                </xsl:with-param>
            </xsl:call-template>
        </li>
    </xsl:template>

    <xsl:template match="//foaf:made">
        <li>
            <xsl:call-template name="anchor">
                <xsl:with-param name="text">
                    <xsl:value-of select="@rdfs:label" />
                </xsl:with-param>
                <xsl:with-param name="href">
                    <xsl:value-of select="@rdf:resource" />
                </xsl:with-param>
            </xsl:call-template>
        </li>
    </xsl:template>

    <xsl:template match="//foaf:pastProject">
        <li>
            <xsl:call-template name="anchor">
                <xsl:with-param name="text">
                    <xsl:value-of select="@rdfs:label" />
                </xsl:with-param>
                <xsl:with-param name="href">
                    <xsl:value-of select="@rdf:resource" />
                </xsl:with-param>
            </xsl:call-template>
        </li>
    </xsl:template>

    <xsl:template match="//foaf:account/foaf:OnlineAccount|//foaf:jabberID">
        <li>
            <xsl:call-template name="anchor-rel-me">
                <xsl:with-param name="text">
                    <xsl:value-of select="@rdfs:label" />
                </xsl:with-param>
                <xsl:with-param name="href">
                    <xsl:value-of select="@rdf:about" />
                </xsl:with-param>
            </xsl:call-template>
        </li>
    </xsl:template>

    <xsl:template match="//foaf:weblog">
        <li>
            <xsl:call-template name="anchor-rel-me">
                <xsl:with-param name="text">
                    <xsl:value-of select="@rdfs:label" />
                </xsl:with-param>
                <xsl:with-param name="href">
                    <xsl:value-of select="@rdf:resource" />
                </xsl:with-param>
            </xsl:call-template>
        </li>
    </xsl:template>

    <xsl:template select="//foaf:knows">
        <li>
            <xsl:call-template name="author-rel-friend-met">
                <xsl:with-param name="text">
                    <xsl:value-of select="@rdfs:label" />
                </xsl:with-param>
                <xsl:with-param name="href">
                    <xsl:value-of select="@rdf:resource" />
                </xsl:with-param>
            </xsl:call-template>
    </xsl:template>

    <xsl:template match="//foaf:accountServiceHomepage">
    </xsl:template>
    <xsl:template match="//foaf:accountName">
    </xsl:template>

    <xsl:template match="//dcterms:created">
        <p>
            作成日:
            <time>
                <xsl:value-of select="text()" />
            </time>
        </p>
    </xsl:template>

    <xsl:template match="//dc:rights">
        <p>
            <xsl:value-of select="text()" />
        </p>
    </xsl:template>

    <xsl:template match="//dc:language" />
    <xsl:template match="//dc:format" />

</xsl:stylesheet>
