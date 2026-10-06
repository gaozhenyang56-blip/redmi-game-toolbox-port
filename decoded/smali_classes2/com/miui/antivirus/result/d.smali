.class public Lcom/miui/antivirus/result/d;
.super Lcom/miui/antivirus/result/c;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/antivirus/result/c;-><init>()V

    const-string v0, "module"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antivirus/result/d;->a:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/d;->b:Ljava/lang/String;

    :cond_0
    const-string v0, "category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antivirus/result/d;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/miui/antivirus/result/c;->isTop:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/antivirus/result/c;->isBottom:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/d;->d:Ljava/lang/String;

    return-void
.end method

.method public bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/result/c;->bindView(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/n;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/result/z;

    iget-object p1, p1, Lcom/miui/antivirus/result/z;->a:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/antivirus/result/d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0e0521

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/antivirus/result/d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antivirus/result/d;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Leg/i;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
