.class Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$c;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment$c;->a:Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;->j0(Lcom/miui/gamebooster/ui/PerformanceSettingsFragment;)Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    return-void
.end method
