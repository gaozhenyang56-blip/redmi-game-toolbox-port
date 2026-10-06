.class public Lcom/miui/securityscan/scanner/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Lcom/miui/securityscan/scanner/k$n;

.field private e:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/securityscan/scanner/k$n;->a:Lcom/miui/securityscan/scanner/k$n;

    iput-object v0, p0, Lcom/miui/securityscan/scanner/a;->d:Lcom/miui/securityscan/scanner/k$n;

    iput p1, p0, Lcom/miui/securityscan/scanner/a;->a:I

    iput p2, p0, Lcom/miui/securityscan/scanner/a;->b:I

    iput-object p3, p0, Lcom/miui/securityscan/scanner/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/scanner/k$n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/a;->d:Lcom/miui/securityscan/scanner/k$n;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/securityscan/scanner/a;->a:I

    iput p1, p0, Lcom/miui/securityscan/scanner/a;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/scanner/k$n;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/a;->d:Lcom/miui/securityscan/scanner/k$n;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/securityscan/scanner/a;->a:I

    iput p1, p0, Lcom/miui/securityscan/scanner/a;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/a;->c:Ljava/lang/String;

    iput p2, p0, Lcom/miui/securityscan/scanner/a;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/scanner/a;->e:I

    return v0
.end method
