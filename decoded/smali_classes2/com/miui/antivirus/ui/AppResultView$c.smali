.class synthetic Lcom/miui/antivirus/ui/AppResultView$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/ui/AppResultView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/miui/antivirus/model/d$b;->values()[Lcom/miui/antivirus/model/d$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/antivirus/ui/AppResultView$c;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/miui/antivirus/model/d$b;->a:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/miui/antivirus/ui/AppResultView$c;->b:[I

    sget-object v3, Lcom/miui/antivirus/model/d$b;->d:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/miui/antivirus/ui/AppResultView$c;->b:[I

    sget-object v3, Lcom/miui/antivirus/model/d$b;->e:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/miui/antivirus/ui/AppResultView$c;->b:[I

    sget-object v3, Lcom/miui/antivirus/model/d$b;->f:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/miui/antivirus/ui/AppResultView$c;->b:[I

    sget-object v3, Lcom/miui/antivirus/model/d$b;->g:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lcom/miui/antivirus/ui/AppResultView$c;->b:[I

    sget-object v3, Lcom/miui/antivirus/model/d$b;->b:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v2, Lcom/miui/antivirus/ui/AppResultView$c;->b:[I

    sget-object v3, Lcom/miui/antivirus/model/d$b;->c:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-static {}, Lo2/g$k;->values()[Lo2/g$k;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/miui/antivirus/ui/AppResultView$c;->a:[I

    :try_start_7
    sget-object v3, Lo2/g$k;->a:Lo2/g$k;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/miui/antivirus/ui/AppResultView$c;->a:[I

    sget-object v2, Lo2/g$k;->b:Lo2/g$k;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
