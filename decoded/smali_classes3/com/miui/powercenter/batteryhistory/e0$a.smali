.class Lcom/miui/powercenter/batteryhistory/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/e0;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/miui/powercenter/batteryhistory/e0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/e0;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/e0$a;->c:Lcom/miui/powercenter/batteryhistory/e0;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/e0$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/powercenter/batteryhistory/e0$a;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/e0$a;->c:Lcom/miui/powercenter/batteryhistory/e0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/e0;->d(Lcom/miui/powercenter/batteryhistory/e0;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/e0;->e(Lcom/miui/powercenter/batteryhistory/e0;Z)Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/e0$a;->c:Lcom/miui/powercenter/batteryhistory/e0;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/e0$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/e0$a;->b:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/miui/powercenter/batteryhistory/e0;->f(Lcom/miui/powercenter/batteryhistory/e0;Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/e0$a;->c:Lcom/miui/powercenter/batteryhistory/e0;

    invoke-static {p1}, Lcom/miui/powercenter/batteryhistory/e0;->g(Lcom/miui/powercenter/batteryhistory/e0;)Lcom/miui/powercenter/batteryhistory/z$c;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/e0$a;->c:Lcom/miui/powercenter/batteryhistory/e0;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/e0;->d(Lcom/miui/powercenter/batteryhistory/e0;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/miui/powercenter/batteryhistory/z$c;->a(Z)V

    return-void
.end method
