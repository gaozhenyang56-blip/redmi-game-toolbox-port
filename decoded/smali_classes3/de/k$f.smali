.class Lde/k$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/k;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/k;


# direct methods
.method constructor <init>(Lde/k;)V
    .locals 0

    iput-object p1, p0, Lde/k$f;->a:Lde/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lde/k$f;->a:Lde/k;

    invoke-static {p1}, Lde/k;->c(Lde/k;)Lcom/miui/common/ui/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lde/k$f;->a:Lde/k;

    invoke-static {p1}, Lde/k;->i(Lde/k;)V

    :cond_0
    iget-object p1, p0, Lde/k$f;->a:Lde/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lde/k;->d(Lde/k;Lcom/miui/common/ui/d;)Lcom/miui/common/ui/d;

    return-void
.end method
