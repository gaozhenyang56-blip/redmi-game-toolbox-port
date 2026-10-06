.class public Lv5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lcom/miui/gamebooster/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lv5/a;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    iget-boolean v0, p0, Lv5/a;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e019b

    goto :goto_0

    :cond_0
    const v0, 0x7f0e019a

    :goto_0
    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p0, p1, p2, p3}, Lv5/a;->f(Lq6/i;Lcom/miui/gamebooster/model/d;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p0, p1, p2}, Lv5/a;->g(Lcom/miui/gamebooster/model/d;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f(Lq6/i;Lcom/miui/gamebooster/model/d;I)V
    .locals 0

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->c()Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const p3, 0x7f0b04e1

    invoke-virtual {p1, p3, p2}, Lq6/i;->f(ILjava/lang/String;)Lq6/i;

    return-void
.end method

.method public g(Lcom/miui/gamebooster/model/d;I)Z
    .locals 0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
