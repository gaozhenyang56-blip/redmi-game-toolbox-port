.class public final synthetic Lcom/miui/antivirus/activity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/activity/c;->a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    iput p2, p0, Lcom/miui/antivirus/activity/c;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/c;->a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    iget v1, p0, Lcom/miui/antivirus/activity/c;->b:I

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a$a;->a(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;I)V

    return-void
.end method
