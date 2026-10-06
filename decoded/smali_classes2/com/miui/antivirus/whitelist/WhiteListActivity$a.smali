.class Lcom/miui/antivirus/whitelist/WhiteListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/whitelist/WhiteListActivity;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/miui/antivirus/whitelist/WhiteListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$a;->b:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    iput-object p2, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$a;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$a;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public b(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$a;->b:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e006e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$a;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const v1, 0x7f0b04e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method
