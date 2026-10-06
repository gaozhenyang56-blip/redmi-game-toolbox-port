.class public final enum Lg8/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg8/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lg8/b;

.field public static final enum b:Lg8/b;

.field public static final enum c:Lg8/b;

.field public static final enum d:Lg8/b;

.field public static final enum e:Lg8/b;

.field public static final enum f:Lg8/b;

.field public static final enum g:Lg8/b;

.field private static final synthetic h:[Lg8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lg8/b;

    const-string v1, "QUICK_FUNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg8/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg8/b;->a:Lg8/b;

    new-instance v1, Lg8/b;

    const-string v3, "VIDEO_EFFECTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lg8/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg8/b;->b:Lg8/b;

    new-instance v3, Lg8/b;

    const-string v5, "FLOATING_APPS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lg8/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg8/b;->c:Lg8/b;

    new-instance v5, Lg8/b;

    const-string v7, "SETTINGS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lg8/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg8/b;->d:Lg8/b;

    new-instance v7, Lg8/b;

    const-string v9, "AD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lg8/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lg8/b;->e:Lg8/b;

    new-instance v9, Lg8/b;

    const-string v11, "DIVIDER_LINE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lg8/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lg8/b;->f:Lg8/b;

    new-instance v11, Lg8/b;

    const-string v13, "THEATRE_MODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lg8/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lg8/b;->g:Lg8/b;

    const/4 v13, 0x7

    new-array v13, v13, [Lg8/b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lg8/b;->h:[Lg8/b;

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

.method public static valueOf(Ljava/lang/String;)Lg8/b;
    .locals 1

    const-class v0, Lg8/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg8/b;

    return-object p0
.end method

.method public static values()[Lg8/b;
    .locals 1

    sget-object v0, Lg8/b;->h:[Lg8/b;

    invoke-virtual {v0}, [Lg8/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg8/b;

    return-object v0
.end method
