.class public final synthetic Lcom/miui/securityscan/scanner/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/scanner/k$o;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/scanner/k$o;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/l;->a:Lcom/miui/securityscan/scanner/k$o;

    iput p2, p0, Lcom/miui/securityscan/scanner/l;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/l;->a:Lcom/miui/securityscan/scanner/k$o;

    iget v1, p0, Lcom/miui/securityscan/scanner/l;->b:I

    invoke-static {v0, v1}, Lcom/miui/securityscan/scanner/k$o;->f(Lcom/miui/securityscan/scanner/k$o;I)V

    return-void
.end method
