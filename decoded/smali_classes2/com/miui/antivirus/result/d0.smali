.class public Lcom/miui/antivirus/result/d0;
.super Lcom/miui/antivirus/result/g;
.source "SourceFile"


# instance fields
.field private t:Ljava/lang/String;

.field private u:Z

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/result/g;-><init>()V

    return-void
.end method

.method public static x(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/d0;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "summary"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "button"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "buttonColor2"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    const-string v7, "showTime"

    invoke-virtual {p0, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    :try_start_0
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/miui/antivirus/result/d0;

    invoke-direct {v0}, Lcom/miui/antivirus/result/d0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/result/g;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/g;->q(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/result/d0;->B(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/miui/antivirus/result/g;->j(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/miui/antivirus/result/d0;->C(I)V

    if-eqz v7, :cond_3

    invoke-virtual {v0, v6}, Lcom/miui/antivirus/result/d0;->A(I)V

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public A(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/d0;->v:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/antivirus/result/d0;->u:Z

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/d0;->t:Ljava/lang/String;

    return-void
.end method

.method public C(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/result/d0;->w:I

    return-void
.end method

.method public w(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0b0a74

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0b0a76

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0a75

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/antivirus/result/g;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/antivirus/result/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/miui/antivirus/result/d0;->u:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/antivirus/result/d0;->v:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/antivirus/result/g;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lx4/o0;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/d0;->t:Ljava/lang/String;

    return-object v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/result/d0;->w:I

    return v0
.end method
