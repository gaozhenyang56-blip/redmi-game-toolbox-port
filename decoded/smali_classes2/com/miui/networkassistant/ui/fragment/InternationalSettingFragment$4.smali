.class Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$4;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;)V

    return-void
.end method
