.class Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemUpdate(II)V
    .locals 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)J

    move-result-wide v1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$100(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object p2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringLimitTraffic(J)Z

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$302(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)I

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$1000(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select value index illegal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$502(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)I

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$700(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lmiuix/preference/TextPreference;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$600(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$200(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringOverLimitOptType(I)Z

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->access$402(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;Z)Z

    return-void
.end method
