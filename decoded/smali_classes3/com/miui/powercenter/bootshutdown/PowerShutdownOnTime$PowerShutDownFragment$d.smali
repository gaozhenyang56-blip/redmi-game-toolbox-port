.class Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->c0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Lmiuix/preference/TextPreference;

    move-result-object v1

    if-ne p1, v1, :cond_0

    new-instance p1, Lmiuix/appcompat/app/TimePickerDialog;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->n0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    move-result-object v3

    new-instance v4, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d$a;

    invoke-direct {v4, p0, v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d$a;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->d0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->d0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)I

    move-result v0

    goto :goto_0

    :cond_0
    new-instance p1, Lmiuix/appcompat/app/TimePickerDialog;

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->n0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    move-result-object v3

    new-instance v4, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d$b;

    invoke-direct {v4, p0, v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d$b;-><init>(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment$d;Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->f0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3c

    invoke-static {v0}, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;->f0(Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime$PowerShutDownFragment;)I

    move-result v0

    :goto_0
    rem-int/lit8 v0, v0, 0x3c

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
