.class final enum Lcom/miui/applicationlock/ChooseAccessControl$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ChooseAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/applicationlock/ChooseAccessControl$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/miui/applicationlock/ChooseAccessControl$d;

.field public static final enum d:Lcom/miui/applicationlock/ChooseAccessControl$d;

.field public static final enum e:Lcom/miui/applicationlock/ChooseAccessControl$d;

.field public static final enum f:Lcom/miui/applicationlock/ChooseAccessControl$d;

.field public static final enum g:Lcom/miui/applicationlock/ChooseAccessControl$d;

.field public static final enum h:Lcom/miui/applicationlock/ChooseAccessControl$d;

.field public static final enum i:Lcom/miui/applicationlock/ChooseAccessControl$d;

.field private static final synthetic j:[Lcom/miui/applicationlock/ChooseAccessControl$d;


# instance fields
.field final a:I

.field final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$d;

    const-string v1, "Cancel"

    const/4 v2, 0x0

    const v3, 0x7f120499

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/applicationlock/ChooseAccessControl$d;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$d;->c:Lcom/miui/applicationlock/ChooseAccessControl$d;

    new-instance v1, Lcom/miui/applicationlock/ChooseAccessControl$d;

    const-string v5, "CancelDisable"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/miui/applicationlock/ChooseAccessControl$d;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/miui/applicationlock/ChooseAccessControl$d;->d:Lcom/miui/applicationlock/ChooseAccessControl$d;

    new-instance v3, Lcom/miui/applicationlock/ChooseAccessControl$d;

    const-string v5, "Retry"

    const/4 v6, 0x2

    const v7, 0x7f120cc9

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/miui/applicationlock/ChooseAccessControl$d;-><init>(Ljava/lang/String;IIZ)V

    sput-object v3, Lcom/miui/applicationlock/ChooseAccessControl$d;->e:Lcom/miui/applicationlock/ChooseAccessControl$d;

    new-instance v5, Lcom/miui/applicationlock/ChooseAccessControl$d;

    const-string v8, "RetryNumeric"

    const/4 v9, 0x3

    const v10, 0x7f120f3e

    invoke-direct {v5, v8, v9, v10, v4}, Lcom/miui/applicationlock/ChooseAccessControl$d;-><init>(Ljava/lang/String;IIZ)V

    sput-object v5, Lcom/miui/applicationlock/ChooseAccessControl$d;->f:Lcom/miui/applicationlock/ChooseAccessControl$d;

    new-instance v8, Lcom/miui/applicationlock/ChooseAccessControl$d;

    const-string v10, "RetryMixed"

    const/4 v11, 0x4

    const v12, 0x7f120e16

    invoke-direct {v8, v10, v11, v12, v4}, Lcom/miui/applicationlock/ChooseAccessControl$d;-><init>(Ljava/lang/String;IIZ)V

    sput-object v8, Lcom/miui/applicationlock/ChooseAccessControl$d;->g:Lcom/miui/applicationlock/ChooseAccessControl$d;

    new-instance v10, Lcom/miui/applicationlock/ChooseAccessControl$d;

    const-string v12, "RetryDisabled"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v7, v2}, Lcom/miui/applicationlock/ChooseAccessControl$d;-><init>(Ljava/lang/String;IIZ)V

    sput-object v10, Lcom/miui/applicationlock/ChooseAccessControl$d;->h:Lcom/miui/applicationlock/ChooseAccessControl$d;

    new-instance v7, Lcom/miui/applicationlock/ChooseAccessControl$d;

    const-string v12, "Gone"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v7, v12, v14, v15, v2}, Lcom/miui/applicationlock/ChooseAccessControl$d;-><init>(Ljava/lang/String;IIZ)V

    sput-object v7, Lcom/miui/applicationlock/ChooseAccessControl$d;->i:Lcom/miui/applicationlock/ChooseAccessControl$d;

    const/4 v12, 0x7

    new-array v12, v12, [Lcom/miui/applicationlock/ChooseAccessControl$d;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v9

    aput-object v8, v12, v11

    aput-object v10, v12, v13

    aput-object v7, v12, v14

    sput-object v12, Lcom/miui/applicationlock/ChooseAccessControl$d;->j:[Lcom/miui/applicationlock/ChooseAccessControl$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/applicationlock/ChooseAccessControl$d;->a:I

    iput-boolean p4, p0, Lcom/miui/applicationlock/ChooseAccessControl$d;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/applicationlock/ChooseAccessControl$d;
    .locals 1

    const-class v0, Lcom/miui/applicationlock/ChooseAccessControl$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/applicationlock/ChooseAccessControl$d;

    return-object p0
.end method

.method public static values()[Lcom/miui/applicationlock/ChooseAccessControl$d;
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$d;->j:[Lcom/miui/applicationlock/ChooseAccessControl$d;

    invoke-virtual {v0}, [Lcom/miui/applicationlock/ChooseAccessControl$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/applicationlock/ChooseAccessControl$d;

    return-object v0
.end method
