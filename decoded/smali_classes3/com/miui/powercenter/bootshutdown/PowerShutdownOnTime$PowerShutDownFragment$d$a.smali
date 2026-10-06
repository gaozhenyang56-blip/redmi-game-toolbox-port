.class Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

.field final synthetic b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d$a;->b:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;

    iput-object p2, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->e0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;I)I

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->c0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Lmiuix/preference/TextPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d$a;->a:Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    invoke-static {p2}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->d0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)I

    move-result p2

    invoke-static {p2}, Lme/e0;->n(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method
