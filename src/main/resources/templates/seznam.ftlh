[#ftl]
[@c.page]
    <div class="seznam">
        [#list vizitky]
        [#items as vizitka]
        <a href="/detail/${vizitka.id}">
            <div class="vizitka">
                <div class="jmeno">${vizitka.cele_jmeno}</div>
                <div class="firma">${vizitka.firma}</div>
                <div class="udaje">
                    <div class="adresa">
                        <div>${vizitka.obec}1</div>
                        <div><span>${vizitka.ulice}</span> <span>${vizitka.psc}</span></div>
                    </div>
                    <div class="kontakty">
                        [#if vizitka.email??]
                            <div><i class="las la-at"></i> <span>${vizitka.email}</span></div>
                        [/#if]
                        [#if vizitka.telefon??]
                            <div><i class="las la-phone-alt"></i> <span>${vizitka.telefon}</span></div>
                        [/#if]
                        <div><i class="las la-globe"></i> <span>${vizitka.web}</span></div>
                    </div>
                </div>
            </div>
            [/#items]
            [/#list]
        </a>

        <a href="/nova">
            <div class="vizitka vizitka--nova">
                <svg width="100" height="100">
                    <rect width="20" height="100" x="40" y="0" fill="white"/>
                    <rect width="100" height="20" x="0" y="40" fill="white"/>
                </svg>
            </div>
        </a>
    </div>
[/@c.page]
