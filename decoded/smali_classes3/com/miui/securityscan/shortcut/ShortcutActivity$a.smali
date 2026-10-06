.class Lcom/miui/securityscan/shortcut/ShortcutActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/shortcut/ShortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lcom/miui/securityscan/shortcut/ShortcutListItemView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    check-cast p1, Lcom/miui/securityscan/shortcut/ShortcutListItemView;

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$a;->a:Lcom/miui/securityscan/shortcut/ShortcutListItemView;

    return-void
.end method
