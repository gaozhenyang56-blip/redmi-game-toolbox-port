.class Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
