.class Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemUpdate(II)V
    .locals 1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->access$002(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;I)I

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;I)V

    :goto_0
    return-void
.end method
