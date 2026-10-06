.class public abstract Lcom/miui/bubbles/settings/GlobalSettings;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingsName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/bubbles/settings/GlobalSettings;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/bubbles/settings/GlobalSettings;->mSettingsName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/settings/GlobalSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/settings/GlobalSettings;->mSettingsName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/miui/bubbles/settings/GlobalSettings;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/bubbles/settings/GlobalSettings;->onSettingChanged(I)V

    return-void
.end method

.method protected abstract onSettingChanged(I)V
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/bubbles/settings/GlobalSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/bubbles/settings/GlobalSettings;->mSettingsName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/bubbles/settings/GlobalSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method public setValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/settings/GlobalSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/settings/GlobalSettings;->mSettingsName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
