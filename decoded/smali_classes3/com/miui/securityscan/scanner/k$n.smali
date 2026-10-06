.class public final enum Lcom/miui/securityscan/scanner/k$n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/scanner/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/securityscan/scanner/k$n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/securityscan/scanner/k$n;

.field public static final enum b:Lcom/miui/securityscan/scanner/k$n;

.field private static final synthetic c:[Lcom/miui/securityscan/scanner/k$n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/securityscan/scanner/k$n;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/scanner/k$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/securityscan/scanner/k$n;->a:Lcom/miui/securityscan/scanner/k$n;

    new-instance v1, Lcom/miui/securityscan/scanner/k$n;

    const-string v3, "FINISH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/securityscan/scanner/k$n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/securityscan/scanner/k$n;->b:Lcom/miui/securityscan/scanner/k$n;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/miui/securityscan/scanner/k$n;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/miui/securityscan/scanner/k$n;->c:[Lcom/miui/securityscan/scanner/k$n;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/securityscan/scanner/k$n;
    .locals 1

    const-class v0, Lcom/miui/securityscan/scanner/k$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/securityscan/scanner/k$n;

    return-object p0
.end method

.method public static values()[Lcom/miui/securityscan/scanner/k$n;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/scanner/k$n;->c:[Lcom/miui/securityscan/scanner/k$n;

    invoke-virtual {v0}, [Lcom/miui/securityscan/scanner/k$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/securityscan/scanner/k$n;

    return-object v0
.end method
