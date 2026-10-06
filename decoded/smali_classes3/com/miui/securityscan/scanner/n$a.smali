.class final Lcom/miui/securityscan/scanner/n$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/scanner/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lcom/miui/securityscan/scanner/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/securityscan/scanner/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/scanner/n$a;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/n$a;-><init>()V

    sput-object v0, Lcom/miui/securityscan/scanner/n$a;->a:Lcom/miui/securityscan/scanner/n$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/securityscan/scanner/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/securityscan/scanner/n;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/n;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/n$a;->a()Lcom/miui/securityscan/scanner/n;

    move-result-object v0

    return-object v0
.end method
