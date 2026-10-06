.class final Landroidx/lifecycle/a1$b;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/a1;->a(Landroid/view/View;)Landroidx/lifecycle/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Landroid/view/View;",
        "Landroidx/lifecycle/y0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/a1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/a1$b;

    invoke-direct {v0}, Landroidx/lifecycle/a1$b;-><init>()V

    sput-object v0, Landroidx/lifecycle/a1$b;->a:Landroidx/lifecycle/a1$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroidx/lifecycle/y0;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lp0/e;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroidx/lifecycle/y0;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/lifecycle/y0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a1$b;->a(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object p1

    return-object p1
.end method
