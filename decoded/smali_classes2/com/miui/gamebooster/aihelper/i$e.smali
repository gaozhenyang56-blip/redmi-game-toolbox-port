.class public final Lcom/miui/gamebooster/aihelper/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/aihelper/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/aihelper/i;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/aihelper/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/i$e;->a:Lcom/miui/gamebooster/aihelper/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i$e;->a:Lcom/miui/gamebooster/aihelper/i;

    invoke-static {v0}, Lcom/miui/gamebooster/aihelper/i;->h(Lcom/miui/gamebooster/aihelper/i;)Lcom/miui/gamebooster/aihelper/d;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/gamebooster/aihelper/d;->f(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i$e;->a:Lcom/miui/gamebooster/aihelper/i;

    invoke-static {v0}, Lcom/miui/gamebooster/aihelper/i;->h(Lcom/miui/gamebooster/aihelper/i;)Lcom/miui/gamebooster/aihelper/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/gamebooster/aihelper/d;->f(Ljava/lang/String;I)V

    return-void
.end method
