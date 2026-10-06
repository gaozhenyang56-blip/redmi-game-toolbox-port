.class Lmiuix/preference/DropDownPreference$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/DropDownPreference;->onBindViewHolder(Landroidx/preference/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/preference/h;

.field final synthetic b:Lmiuix/preference/DropDownPreference;


# direct methods
.method constructor <init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/h;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/DropDownPreference$d;->b:Lmiuix/preference/DropDownPreference;

    iput-object p2, p0, Lmiuix/preference/DropDownPreference$d;->a:Landroidx/preference/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpinnerDismiss()V
    .locals 2

    iget-object v0, p0, Lmiuix/preference/DropDownPreference$d;->a:Landroidx/preference/h;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method
