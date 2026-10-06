.class Lmiuix/preference/i$a;
.super Landroidx/recyclerview/widget/RecyclerView$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/preference/i;


# direct methods
.method constructor <init>(Lmiuix/preference/i;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/i$a;->a:Lmiuix/preference/i;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$j;->onChanged()V

    iget-object v0, p0, Lmiuix/preference/i$a;->a:Lmiuix/preference/i;

    invoke-virtual {v0}, Landroidx/preference/c;->getItemCount()I

    move-result v1

    new-array v1, v1, [Lmiuix/preference/i$f;

    invoke-static {v0, v1}, Lmiuix/preference/i;->u(Lmiuix/preference/i;[Lmiuix/preference/i$f;)[Lmiuix/preference/i$f;

    return-void
.end method
