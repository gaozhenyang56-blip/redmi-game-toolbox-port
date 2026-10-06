.class Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/SettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->access$1700(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    return-void
.end method
