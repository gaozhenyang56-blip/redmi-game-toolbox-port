.class Lcom/miui/securityscan/shortcut/ShortcutActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/shortcut/ShortcutActivity$c;->k(Lcom/miui/securityscan/shortcut/ShortcutActivity$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/shortcut/ShortcutActivity$a;

.field final synthetic b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/shortcut/ShortcutActivity$c;Lcom/miui/securityscan/shortcut/ShortcutActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c$a;->b:Lcom/miui/securityscan/shortcut/ShortcutActivity$c;

    iput-object p2, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c$a;->a:Lcom/miui/securityscan/shortcut/ShortcutActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/securityscan/shortcut/ShortcutActivity$c$a;->a:Lcom/miui/securityscan/shortcut/ShortcutActivity$a;

    iget-object p1, p1, Lcom/miui/securityscan/shortcut/ShortcutActivity$a;->a:Lcom/miui/securityscan/shortcut/ShortcutListItemView;

    invoke-virtual {p1}, Lcom/miui/securityscan/shortcut/ShortcutListItemView;->b()V

    return-void
.end method
