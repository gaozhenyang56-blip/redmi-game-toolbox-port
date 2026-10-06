.class public final synthetic Lhg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# instance fields
.field public final synthetic a:Lcom/miui/simlock/fragment/SimLockQueryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/simlock/fragment/SimLockQueryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhg/b;->a:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lhg/b;->a:Lcom/miui/simlock/fragment/SimLockQueryFragment;

    invoke-static {v0, p1}, Lcom/miui/simlock/fragment/SimLockQueryFragment;->c0(Lcom/miui/simlock/fragment/SimLockQueryFragment;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
