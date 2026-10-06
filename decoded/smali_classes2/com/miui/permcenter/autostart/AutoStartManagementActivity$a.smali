.class Lcom/miui/permcenter/autostart/AutoStartManagementActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/autostart/AutoStartManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$a;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$a;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {v0, p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->e0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$a;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->n0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    iget-object p1, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$a;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->o0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
