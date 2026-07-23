import { redirect } from 'next/navigation'

// SANDBOX: this deployment has no admin desktop (removed per build scope —
// dashboard product only, no admin-desktop tooling). Everyone lands on
// analytics, unconditionally. The is_admin-based branch that used to send
// admins to /dashboard/admin/desktop is gone along with that route.
export default async function DashboardIndex() {
  redirect('/dashboard/analytics')
}