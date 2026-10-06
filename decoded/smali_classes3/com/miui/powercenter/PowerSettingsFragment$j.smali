.class Lcom/miui/powercenter/PowerSettingsFragment$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/PowerSettingsFragment;->b1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/miui/powercenter/PowerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSettingsFragment;[I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$j;->c:Lcom/miui/powercenter/PowerSettingsFragment;

    iput-object p2, p0, Lcom/miui/powercenter/PowerSettingsFragment$j;->a:[I

    iput-object p3, p0, Lcom/miui/powercenter/PowerSettingsFragment$j;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment$j;->c:Lcom/miui/powercenter/PowerSettingsFragment;

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment$j;->a:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerSettingsFragment;->u0(Lcom/miui/powercenter/PowerSettingsFragment;I)V

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment$j;->c:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettingsFragment;->v0(Lcom/miui/powercenter/PowerSettingsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/PowerSettingsFragment$j;->b:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
