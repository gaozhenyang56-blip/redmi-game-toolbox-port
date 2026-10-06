.class Lcom/miui/powercenter/bootshutdown/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/bootshutdown/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/bootshutdown/a;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/a$c;->a:Lcom/miui/powercenter/bootshutdown/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/a$c;->a:Lcom/miui/powercenter/bootshutdown/a;

    invoke-static {p1, p3}, Lcom/miui/powercenter/bootshutdown/a;->c(Lcom/miui/powercenter/bootshutdown/a;I)I

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/a$c;->a:Lcom/miui/powercenter/bootshutdown/a;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/a;->a(Lcom/miui/powercenter/bootshutdown/a;)Lcom/miui/powercenter/bootshutdown/a$e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/a$c;->a:Lcom/miui/powercenter/bootshutdown/a;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/a;->a(Lcom/miui/powercenter/bootshutdown/a;)Lcom/miui/powercenter/bootshutdown/a$e;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/bootshutdown/a$c;->a:Lcom/miui/powercenter/bootshutdown/a;

    invoke-interface {p1, p2, p3}, Lcom/miui/powercenter/bootshutdown/a$e;->a(Lcom/miui/powercenter/bootshutdown/a;I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/a$c;->a:Lcom/miui/powercenter/bootshutdown/a;

    invoke-virtual {p1}, Lcom/miui/powercenter/bootshutdown/a;->d()V

    return-void
.end method
