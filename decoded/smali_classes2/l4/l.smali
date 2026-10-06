.class public Ll4/l;
.super Ll4/b;
.source "SourceFile"


# instance fields
.field protected d:Ll4/b;

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ll4/b;-><init>()V

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll4/l;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V
    .locals 1

    iget-object v0, p0, Ll4/l;->d:Ll4/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Ll4/b;->a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ll4/b;->a(ILandroid/view/View;Landroid/content/Context;Ll4/f;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Ll4/l;->d:Ll4/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll4/b;->b()I

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f0e0139

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ll4/l;->d:Ll4/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ll4/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Ll4/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll4/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ll4/b;)V
    .locals 0

    iput-object p1, p0, Ll4/l;->d:Ll4/b;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ll4/l;->d:Ll4/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ll4/b;->onClick(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Ll4/b;->onClick(Landroid/view/View;)V

    return-void
.end method
