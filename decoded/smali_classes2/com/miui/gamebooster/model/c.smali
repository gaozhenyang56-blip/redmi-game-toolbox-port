.class public Lcom/miui/gamebooster/model/c;
.super Lcom/miui/gamebooster/model/d;
.source "SourceFile"


# instance fields
.field private f:Z


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/model/d;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/miui/gamebooster/model/d;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/c;->f:Z

    return v0
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/c;->f:Z

    return-void
.end method
