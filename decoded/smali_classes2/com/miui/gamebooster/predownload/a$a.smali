.class Lcom/miui/gamebooster/predownload/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/predownload/a;->n(Landroid/widget/TextView;Li7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li7/a;

.field final synthetic b:Lj7/a;

.field final synthetic c:Lcom/miui/gamebooster/predownload/a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/predownload/a;Li7/a;Lj7/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/predownload/a$a;->c:Lcom/miui/gamebooster/predownload/a;

    iput-object p2, p0, Lcom/miui/gamebooster/predownload/a$a;->a:Li7/a;

    iput-object p3, p0, Lcom/miui/gamebooster/predownload/a$a;->b:Lj7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/a$a;->a:Li7/a;

    iget-boolean v0, v0, Li7/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/a$a;->a:Li7/a;

    iget-object v0, v0, Li7/a;->d:Lj7/a;

    invoke-virtual {v0}, Lj7/a;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lve/g;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/predownload/a$a;->c:Lcom/miui/gamebooster/predownload/a;

    iget-object v1, p0, Lcom/miui/gamebooster/predownload/a$a;->b:Lj7/a;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/predownload/b;->l(Lj7/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f120a9a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
