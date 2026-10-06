.class Lcom/miui/optimizemanage/settings/SettingsFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizemanage/settings/SettingsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:[I

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/optimizemanage/settings/SettingsFragment;[I[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$c;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$c;->b:[I

    iput-object p3, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$c;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/settings/SettingsFragment;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$c;->b:[I

    aget v1, v1, p2

    mul-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Lgd/c;->j2(I)V

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/SettingsFragment;->d0(Lcom/miui/optimizemanage/settings/SettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/SettingsFragment$c;->c:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
