.class public Lcom/miui/gamebooster/model/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/model/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/pm/ApplicationInfo;

.field private b:Z

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/model/d;->a:Landroid/content/pm/ApplicationInfo;

    iput-boolean p2, p0, Lcom/miui/gamebooster/model/d;->b:Z

    iput-object p3, p0, Lcom/miui/gamebooster/model/d;->c:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/miui/gamebooster/model/d;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/d;->a:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/d;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/d;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/d;->b:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/d;->e:Z

    return v0
.end method

.method public f(Lcom/miui/gamebooster/model/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/d;->b:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/d;->e:Z

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/d;->c:Ljava/lang/CharSequence;

    return-void
.end method
