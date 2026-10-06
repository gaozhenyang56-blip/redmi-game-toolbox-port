.class Lv7/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/b;->f(Lq6/i;Lu7/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lv7/b;


# direct methods
.method constructor <init>(Lv7/b;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lv7/b$a;->b:Lv7/b;

    iput-object p2, p0, Lv7/b$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lv7/b$a;->a:Landroid/view/View;

    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
