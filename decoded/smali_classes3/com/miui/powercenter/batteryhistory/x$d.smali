.class Lcom/miui/powercenter/batteryhistory/x$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lne/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/x;->w(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/x;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/x;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$d;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lne/c;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$d;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p1, p2}, Lcom/miui/powercenter/batteryhistory/x;->q(Lcom/miui/powercenter/batteryhistory/x;I)I

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$d;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/x;->g(Lcom/miui/powercenter/batteryhistory/x;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x$d;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/x;->f(Lcom/miui/powercenter/batteryhistory/x;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$d;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/x;->p(Lcom/miui/powercenter/batteryhistory/x;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x$d;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/x;->h(Lcom/miui/powercenter/batteryhistory/x;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/batteryhistory/p;->a(I)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$d;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/x;->p(Lcom/miui/powercenter/batteryhistory/x;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/powercenter/batteryhistory/x;->i(Lcom/miui/powercenter/batteryhistory/x;I)I

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$d;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/x;->p(Lcom/miui/powercenter/batteryhistory/x;)I

    move-result p1

    invoke-static {p1}, Lhd/a;->G(I)V

    return-void
.end method
