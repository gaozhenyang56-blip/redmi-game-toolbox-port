.class Lcom/miui/antivirus/result/b$a;
.super Lbh/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/result/b;->bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbh/b<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/result/b;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/b$a;->a:Lcom/miui/antivirus/result/b;

    invoke-direct {p0, p2}, Lbh/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/result/b$a;->d(Landroid/view/View;I)V

    return-void
.end method

.method public c(Landroid/view/View;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/b$a;->c(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
