.class Lcom/miui/powercenter/PowerSettingsFragment$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/PowerSettingsFragment$a;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/PowerSettingsFragment$a;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSettingsFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$a$b;->a:Lcom/miui/powercenter/PowerSettingsFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$a$b;->a:Lcom/miui/powercenter/PowerSettingsFragment$a;

    iget-object p1, p1, Lcom/miui/powercenter/PowerSettingsFragment$a;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    const-string p2, "performance"

    invoke-static {p1, p2}, Lcom/miui/powercenter/PowerSettingsFragment;->c0(Lcom/miui/powercenter/PowerSettingsFragment;Ljava/lang/String;)V

    return-void
.end method
