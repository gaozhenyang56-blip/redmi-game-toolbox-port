.class synthetic Lcom/miui/antivirus/result/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/miui/antivirus/model/d$c;->values()[Lcom/miui/antivirus/model/d$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/antivirus/result/m;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/miui/antivirus/model/d$c;->f:Lcom/miui/antivirus/model/d$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/miui/antivirus/result/m;->b:[I

    sget-object v3, Lcom/miui/antivirus/model/d$c;->b:Lcom/miui/antivirus/model/d$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/miui/antivirus/result/m;->b:[I

    sget-object v3, Lcom/miui/antivirus/model/d$c;->g:Lcom/miui/antivirus/model/d$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/miui/antivirus/result/m;->b:[I

    sget-object v3, Lcom/miui/antivirus/model/d$c;->d:Lcom/miui/antivirus/model/d$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/miui/antivirus/result/m;->b:[I

    sget-object v3, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    invoke-static {}, Lcom/miui/antivirus/result/a$a;->values()[Lcom/miui/antivirus/result/a$a;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/miui/antivirus/result/m;->a:[I

    :try_start_5
    sget-object v3, Lcom/miui/antivirus/result/a$a;->a:Lcom/miui/antivirus/result/a$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/miui/antivirus/result/m;->a:[I

    sget-object v2, Lcom/miui/antivirus/result/a$a;->b:Lcom/miui/antivirus/result/a$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
