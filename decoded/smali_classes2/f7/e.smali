.class public final enum Lf7/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf7/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf7/e;

.field public static final enum b:Lf7/e;

.field public static final enum c:Lf7/e;

.field public static final enum d:Lf7/e;

.field public static final enum e:Lf7/e;

.field public static final enum f:Lf7/e;

.field public static final enum g:Lf7/e;

.field public static final enum h:Lf7/e;

.field private static final synthetic i:[Lf7/e;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lf7/e;

    const-string v1, "MULTI_WINDOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf7/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf7/e;->a:Lf7/e;

    new-instance v1, Lf7/e;

    const-string v3, "GAMEBOOSTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lf7/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lf7/e;->b:Lf7/e;

    new-instance v3, Lf7/e;

    const-string v5, "VIDEO_TOOLBOX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lf7/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lf7/e;->c:Lf7/e;

    new-instance v5, Lf7/e;

    const-string v7, "AUTO_TASK_TRACK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lf7/e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lf7/e;->d:Lf7/e;

    new-instance v7, Lf7/e;

    const-string v9, "AI_PRELOAD_APP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lf7/e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lf7/e;->e:Lf7/e;

    new-instance v9, Lf7/e;

    const-string v11, "GLOBAL_DOCK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lf7/e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lf7/e;->f:Lf7/e;

    new-instance v11, Lf7/e;

    const-string v13, "ANTIVIRUS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lf7/e;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lf7/e;->g:Lf7/e;

    new-instance v13, Lf7/e;

    const-string v15, "CONVERSATION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lf7/e;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lf7/e;->h:Lf7/e;

    const/16 v15, 0x8

    new-array v15, v15, [Lf7/e;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lf7/e;->i:[Lf7/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf7/e;
    .locals 1

    const-class v0, Lf7/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf7/e;

    return-object p0
.end method

.method public static values()[Lf7/e;
    .locals 1

    sget-object v0, Lf7/e;->i:[Lf7/e;

    invoke-virtual {v0}, [Lf7/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf7/e;

    return-object v0
.end method
