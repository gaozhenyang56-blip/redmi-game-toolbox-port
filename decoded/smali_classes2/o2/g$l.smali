.class public final enum Lo2/g$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo2/g$l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lo2/g$l;

.field public static final enum b:Lo2/g$l;

.field public static final enum c:Lo2/g$l;

.field public static final enum d:Lo2/g$l;

.field private static final synthetic e:[Lo2/g$l;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lo2/g$l;

    const-string v1, "SAFE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo2/g$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo2/g$l;->a:Lo2/g$l;

    new-instance v1, Lo2/g$l;

    const-string v3, "RISK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lo2/g$l;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo2/g$l;->b:Lo2/g$l;

    new-instance v3, Lo2/g$l;

    const-string v5, "VIRUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lo2/g$l;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lo2/g$l;->c:Lo2/g$l;

    new-instance v5, Lo2/g$l;

    const-string v7, "RISK_APP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lo2/g$l;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lo2/g$l;->d:Lo2/g$l;

    const/4 v7, 0x4

    new-array v7, v7, [Lo2/g$l;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lo2/g$l;->e:[Lo2/g$l;

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

.method public static valueOf(Ljava/lang/String;)Lo2/g$l;
    .locals 1

    const-class v0, Lo2/g$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo2/g$l;

    return-object p0
.end method

.method public static values()[Lo2/g$l;
    .locals 1

    sget-object v0, Lo2/g$l;->e:[Lo2/g$l;

    invoke-virtual {v0}, [Lo2/g$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo2/g$l;

    return-object v0
.end method
