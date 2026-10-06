.class Lcom/miui/antivirus/result/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/e;->e(Lcom/miui/antivirus/activity/MainActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PopupWindow;

.field final synthetic b:Lcom/miui/antivirus/activity/MainActivity;

.field final synthetic c:Lcom/miui/antivirus/result/e;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/e;Landroid/widget/PopupWindow;Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/e$a;->c:Lcom/miui/antivirus/result/e;

    iput-object p2, p0, Lcom/miui/antivirus/result/e$a;->a:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/miui/antivirus/result/e$a;->b:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/antivirus/result/e$a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/miui/antivirus/result/e$a;->b:Lcom/miui/antivirus/activity/MainActivity;

    iget-object v0, p0, Lcom/miui/antivirus/result/e$a;->c:Lcom/miui/antivirus/result/e;

    invoke-virtual {p1, v0}, Lcom/miui/antivirus/activity/MainActivity;->E1(Lcom/miui/antivirus/result/a;)V

    iget-object p1, p0, Lcom/miui/antivirus/result/e$a;->c:Lcom/miui/antivirus/result/e;

    invoke-static {p1}, Lcom/miui/antivirus/result/e;->a(Lcom/miui/antivirus/result/e;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/c;

    iget-object v1, p0, Lcom/miui/antivirus/result/e$a;->b:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/activity/MainActivity;->E1(Lcom/miui/antivirus/result/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
