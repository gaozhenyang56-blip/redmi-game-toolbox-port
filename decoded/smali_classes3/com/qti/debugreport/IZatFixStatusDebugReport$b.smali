.class public final enum Lcom/qti/debugreport/IZatFixStatusDebugReport$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatFixStatusDebugReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/debugreport/IZatFixStatusDebugReport$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

.field public static final enum c:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

.field public static final enum d:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

.field public static final enum e:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

.field private static final synthetic f:[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    const-string v1, "FINAL_FIX_SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->b:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    new-instance v1, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    const-string v3, "TOO_FEW_SV"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->c:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    new-instance v3, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    const-string v5, "HEPE_CHECK_FAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->d:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    new-instance v5, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    const-string v7, "VERY_LOW_RELAIBILITY_FIX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->e:Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->f:[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/debugreport/IZatFixStatusDebugReport$b;
    .locals 1

    const-class v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    return-object p0
.end method

.method public static values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;
    .locals 1

    sget-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->f:[Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    invoke-virtual {v0}, [Lcom/qti/debugreport/IZatFixStatusDebugReport$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/debugreport/IZatFixStatusDebugReport$b;

    return-object v0
.end method
