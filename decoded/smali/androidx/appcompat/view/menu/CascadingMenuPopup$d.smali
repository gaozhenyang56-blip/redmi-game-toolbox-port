.class Landroidx/appcompat/view/menu/CascadingMenuPopup$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/widget/u0;

.field public final b:Landroidx/appcompat/view/menu/f;

.field public final c:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/u0;Landroidx/appcompat/view/menu/f;I)V
    .locals 0
    .param p1    # Landroidx/appcompat/widget/u0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/u0;

    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/f;

    iput p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->c:I

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/u0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/r0;->c()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
