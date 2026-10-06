.class Lcom/miui/applicationlock/SettingLockFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/SettingLockFragment;->K0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/SettingLockFragment;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/SettingLockFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$c;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/applicationlock/SettingLockFragment$c;->a:Lcom/miui/applicationlock/SettingLockFragment;

    invoke-static {p1}, Lcom/miui/applicationlock/SettingLockFragment;->x0(Lcom/miui/applicationlock/SettingLockFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    return-void
.end method
