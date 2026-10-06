.class public Lba/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lba/a;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Lba/a;

.field public c:Lba/a;

.field public d:Lba/a;

.field public e:Lba/a;

.field public f:Lba/a;

.field public g:Lba/a;

.field public h:Lba/a;

.field public i:Lba/a;

.field public j:Lba/a;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lba/b;->a:Ljava/util/Map;

    new-instance v0, Lba/a;

    const-string v1, ".*\u60a8\u672c\u6708\u5df2\u6d88\u8d390.0\u5143.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lba/a;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Lba/b;->b:Lba/a;

    new-instance v0, Lba/a;

    const-string v1, ".*\u60a8\u7684\u8ba2\u5355\u5df2\u51fa\u5e93.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lba/a;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Lba/b;->c:Lba/a;

    new-instance v0, Lba/a;

    const-string v1, ".*\u4eac\u4e1c\u7269\u6d41.*\u60a8\u7684\u53d6\u4ef6\u8ba2\u5355.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lba/a;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Lba/b;->d:Lba/a;

    new-instance v0, Lba/a;

    const-string v1, ".*\u4eac\u4e1c.*\u8d2d\u4e70\u7684.*\u5df2\u51fa\u5e93.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lba/a;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Lba/b;->e:Lba/a;

    new-instance v0, Lba/a;

    const-string v1, ".*\u5c0f\u7c73.*\u60a8\u7684\u8bbf\u5ba2.*\u63a5\u5f85.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lba/a;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Lba/b;->f:Lba/a;

    new-instance v0, Lba/a;

    const-string v1, ".*\u5fae\u4fe1\u652f\u4ed8.*\u652f\u4ed8[0-9.]+\u5143.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lba/a;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Lba/b;->g:Lba/a;

    new-instance v0, Lba/a;

    const-string v1, ".*\u5165\u8d26\u5de5\u8d44.*\u4eba\u6c11\u5e01.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lba/a;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Lba/b;->h:Lba/a;

    new-instance v0, Lba/a;

    const-string v1, ".*\u4eac\u4e1c\u652f\u4ed8.*\u652f\u4ed8[0-9.]+\u5143.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lba/a;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Lba/b;->i:Lba/a;

    new-instance v0, Lba/a;

    const-string v1, "[A-Za-z0-9_]+([-+.][A-Za-z0-9_]+)*@[A-Za-z0-9_]+([-.][A-Za-z0-9_]+)*\\.(zw|zm|za|yt|ye|xyz|xxx|ws|wf|vu|vn|vi|vg|ve|vc|va|uz|uy|us|uk|ug|ua|tz|tw|tv|tt|travel|tr|top|to|tn|tm|tl|tk|tj|th|tg|tf|tel|td|tc|sz|sy|sx|sv|su|st|ss|sr|so|sn|sm|sl|sk|si|sh|sg|se|sd|sc|sb|sa|rw|ru|rs|ro|re|qa|py|pw|pt|ps|pro|pr|post|pn|pm|pl|pk|ph|pg|pf|pe|pa|org|om|nz|nu|nr|np|no|nl|ni|ng|nf|net|ne|nc|name|na|mz|my|mx|mw|mv|museum|mu|mt|ms|mr|mq|mp|moe|mobi|mo|mn|mm|ml|mk|mil|mh|mg|me|md|mc|ma|ly|lv|lu|lt|ls|lr|lk|live|li|lc|lb|la|kz|ky|kw|kr|kp|kn|km|ki|kh|kg|ke|jp|jobs|jo|jm|je|it|is|ir|iq|io|int|info|in|im|il|ie|id|hu|ht|hr|hn|hm|hk|gy|gw|guru|guitars|guide|gu|gt|gs|group|grocery|gripe|green|graphics|gr|gq|gp|gov|gop|google|golf|gold|gn|gm|global|glass|gl|gives|gifts|gift|gi|gh|gg|gf|ge|gdn|gd|gay|garden|games|game|gallery|ga|fyi|futbol|furniture|fund|fun|frontdoor|free|fr|foundation|forum|forsale|football|foodnetwork|food|foo|fo|fm|fly|flowers|florist|flights|fk|fj|fitness|fit|fishing|fish|fire|financial|finance|final|film|fi|feedback|fast|fashion|farm|fans|fan|family|faith|fail|express|exposed|expert|exchange|events|eu|et|estate|esq|es|er|equipment|enterprises|engineering|engineer|energy|email|eg|ee|education|edu|edeka|eco|ec|eat|earth|dz|duck|drive|download|dot|domains|dog|doctor|docs|do|dm|dk|dj|diy|discount|directory|direct|digital|diet|diamonds|dev|design|dentist|dental|democrat|delivery|degree|deals|deal|de|day|dating|date|data|dance|dad|cz|cy|cx|cw|cv|cu|cruises|cruise|cricket|creditcard|credit|cr|courses|coupons|coupon|country|coop|coop|cool|cooking|contractors|contact|consulting|construction|condos|computer|compare|company|community|com|college|coffee|codes|coach|co|cn|cm|club|cloud|clothing|clinic|click|cleaning|claims|cl|ck|city|circle|cipriani|ci|church|christmas|cheap|chat|channel|ch|cg|cfd|cf|cern|ceo|center|cd|cc|catholic|catering|cat|casino|cash|case|cars|careers|career|care|cards|car|capital|cancerresearch|camp|camera|cam|call|cafe|cab|ca|bz|by|bw|buzz|buy|business|builders|build|bt|bs|broker|broadway|br|box|boutique|bot|boots|book|boo|bo|bn|bm|blue|blog|blockbuster|blackfriday|black|bj|biz|bio|bingo|bike|bid|bible|bi|bh|bg|bf|bet|bestbuy|best|berlin|beer|beauty|be|bd|bb|basketball|baseball|bargains|barefoot|bar|bank|band|baby|ba|az|ax|aws|aw|autos|auto|author|audio|audible|auction|au|attorney|at|associates|asia|as|art|arpa|army|archi|ar|aq|app|apartments|ao|analytics|amazon|am|al|airforce|ai|agency|ag|africa|af|aero|ae|adult|ads|ad|actor|active|accountants|accountant|academy|ac)(?![0-9a-zA-Z@_\\-\\+\\.\\/]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {v0, v1}, Lba/a;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Lba/b;->j:Lba/a;

    iget-object v0, p0, Lba/b;->a:Ljava/util/Map;

    const/4 v1, 0x1

    new-array v2, v1, [Lba/a;

    iget-object v3, p0, Lba/b;->b:Lba/a;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "10086"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lba/b;->a:Ljava/util/Map;

    new-array v2, v1, [Lba/a;

    iget-object v3, p0, Lba/b;->h:Lba/a;

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "95555"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lba/b;->a:Ljava/util/Map;

    const/4 v2, 0x7

    new-array v2, v2, [Lba/a;

    iget-object v3, p0, Lba/b;->f:Lba/a;

    aput-object v3, v2, v4

    iget-object v3, p0, Lba/b;->c:Lba/a;

    aput-object v3, v2, v1

    iget-object v1, p0, Lba/b;->d:Lba/a;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    iget-object v1, p0, Lba/b;->e:Lba/a;

    const/4 v3, 0x3

    aput-object v1, v2, v3

    iget-object v1, p0, Lba/b;->g:Lba/a;

    const/4 v3, 0x4

    aput-object v1, v2, v3

    iget-object v1, p0, Lba/b;->i:Lba/a;

    const/4 v3, 0x5

    aput-object v1, v2, v3

    iget-object v1, p0, Lba/b;->j:Lba/a;

    const/4 v3, 0x6

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
