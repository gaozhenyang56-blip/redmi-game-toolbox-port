.class public Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:J

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->a:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->b:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->c:Z

    const p1, 0x7f0e042b

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->a:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->a:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->c:Z

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
