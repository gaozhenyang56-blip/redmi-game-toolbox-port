.class public final enum Lsf/i$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsf/i$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lsf/i$e;

.field public static final enum e:Lsf/i$e;

.field public static final enum f:Lsf/i$e;

.field public static final enum g:Lsf/i$e;

.field public static final enum h:Lsf/i$e;

.field public static final enum i:Lsf/i$e;

.field public static final enum j:Lsf/i$e;

.field public static final enum k:Lsf/i$e;

.field private static final synthetic l:[Lsf/i$e;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lsf/i$e;

    const-string v1, "GARBAGE_CLEANUP"

    const/4 v2, 0x0

    const v3, 0x7f120dc8

    const v4, 0x7f120db5

    const-string v5, "#Intent;action=miui.intent.action.GARBAGE_CLEANUP;end"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lsf/i$e;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lsf/i$e;->d:Lsf/i$e;

    new-instance v0, Lsf/i$e;

    const-string v8, "NETWORK_ASSISTANTS"

    const/4 v9, 0x1

    const v10, 0x7f120dcb

    const v11, 0x7f120db9

    const-string v12, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lsf/i$e;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lsf/i$e;->e:Lsf/i$e;

    new-instance v1, Lsf/i$e;

    const-string v14, "POWER_MANAGER"

    const/4 v15, 0x2

    const v16, 0x7f120dd5

    const v17, 0x7f120dbf

    const-string v18, "#Intent;action=miui.intent.action.POWER_MANAGER;end"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lsf/i$e;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lsf/i$e;->f:Lsf/i$e;

    new-instance v2, Lsf/i$e;

    invoke-static {}, Lx4/t;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f120dc6

    goto :goto_0

    :cond_0
    const v3, 0x7f120dc5

    :goto_0
    move v10, v3

    const v11, 0x7f120db3

    const-string v8, "SECURITY_SCAN"

    const/4 v9, 0x3

    const-string v12, "#Intent;action=miui.intent.action.ANTI_VIRUS;end"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lsf/i$e;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v2, Lsf/i$e;->g:Lsf/i$e;

    new-instance v3, Lsf/i$e;

    const/4 v15, 0x4

    const v16, 0x7f120dc4

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_1

    const v4, 0x7f120db2

    goto :goto_1

    :cond_1
    const v4, 0x7f120db1

    :goto_1
    move/from16 v17, v4

    const-string v14, "ANTI_SPAM"

    const-string v18, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lsf/i$e;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lsf/i$e;->h:Lsf/i$e;

    new-instance v4, Lsf/i$e;

    const/4 v9, 0x5

    const v10, 0x7f1201fb

    const v11, 0x7f120db4

    const-string v8, "APP_MANAGER"

    const-string v12, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lsf/i$e;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lsf/i$e;->i:Lsf/i$e;

    new-instance v5, Lsf/i$e;

    const/4 v15, 0x6

    const v16, 0x7f120dd4

    const v17, 0x7f120dbd

    const-string v14, "OPTIMIZEMANAGE"

    const-string v18, "#Intent;action=miui.intent.action.OPTIMIZE_MANAGE;end"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lsf/i$e;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v5, Lsf/i$e;->j:Lsf/i$e;

    new-instance v13, Lsf/i$e;

    const/4 v9, 0x7

    const v10, 0x7f1204a6

    const v11, 0x7f1204a5

    const-string v8, "DEEPCLEAN"

    const-string v12, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN;end"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lsf/i$e;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v13, Lsf/i$e;->k:Lsf/i$e;

    const/16 v7, 0x8

    new-array v7, v7, [Lsf/i$e;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    const/4 v0, 0x7

    aput-object v13, v7, v0

    sput-object v7, Lsf/i$e;->l:[Lsf/i$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lsf/i$e;->a:I

    iput p4, p0, Lsf/i$e;->b:I

    iput-object p5, p0, Lsf/i$e;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsf/i$e;
    .locals 1

    const-class v0, Lsf/i$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsf/i$e;

    return-object p0
.end method

.method public static values()[Lsf/i$e;
    .locals 1

    sget-object v0, Lsf/i$e;->l:[Lsf/i$e;

    invoke-virtual {v0}, [Lsf/i$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsf/i$e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsf/i$e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lsf/i$e;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lsf/i$e;->b:I

    return v0
.end method
