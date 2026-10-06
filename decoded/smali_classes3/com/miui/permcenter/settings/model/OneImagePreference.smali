.class public Lcom/miui/permcenter/settings/model/OneImagePreference;
.super Lcom/miui/permcenter/settings/model/NoClickEffectPreference;
.source "SourceFile"

# interfaces
.implements Lmiuix/preference/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/settings/model/OneImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/permcenter/settings/model/OneImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;->onBindViewHolder(Landroidx/preference/h;)V

    return-void
.end method
